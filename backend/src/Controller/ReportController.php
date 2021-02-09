<?php


namespace App\Controller;
use App\AutoMapping;
use App\Request\ReportCreateRequest;
use App\Service\ReportService;
use stdClass;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use App\Request\DeleteRequest;

class ReportController extends BaseController
{
    private $autoMapping;
    private $validator;
    private $reportService;

    public function __construct(SerializerInterface $serializer, AutoMapping $autoMapping, ValidatorInterface $validator, ReportService $reportService)
    {
        parent::__construct($serializer);
        $this->autoMapping = $autoMapping;
        $this->validator = $validator;
        $this->reportService = $reportService;
    }
    
    /**
     * @Route("report", name="createReport", methods={"POST"})
     * @param Request $request
     * @return JsonResponse
     */
    public function create(Request $request)
    {
        $data = json_decode($request->getContent(), true);

        $request = $this->autoMapping->map(stdClass::class, ReportCreateRequest::class, (object)$data);
        
        $request->setUserId($this->getUserId());
        
        $violations = $this->validator->validate($request);

        if (\count($violations) > 0) 
        {
            $violationsString = (string) $violations;

            return new JsonResponse($violationsString, Response::HTTP_OK);
        }
            
        $result = $this->reportService->create($request);    

        return $this->response($result, self::CREATE);
    }

    /**
     * @Route("reports", name="getReportsForAdmin", methods={"GET"})
     * @return JsonResponse
     */
    public function getReports()
    {
        $result = $this->reportService->getReports();

        return $this->response($result, self::FETCH);
    }

    /**
     * @Route("report/{id}", name="getReportById", methods={"GET"})
     */
    public function getReportById($id)
    {
        $result = $this->reportService->getReportById($id);

        return $this->response($result, self::FETCH);
    }

    /**
     * @Route("report/{id}", name="deleteReportById", methods={"DELETE"})
     */
    public function delete(Request $request)
    {
        $request = new DeleteRequest($request->get('id'));
        
        $result = $this->reportService->delete($request);

        return $this->response("deleted ", self::DELETE);
    }
}
