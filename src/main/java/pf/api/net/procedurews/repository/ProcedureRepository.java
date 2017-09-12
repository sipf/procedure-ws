package pf.api.net.procedurews.repository;

import org.springframework.data.repository.CrudRepository;
import pf.api.net.procedurews.domain.Procedure;

public interface ProcedureRepository extends CrudRepository<Procedure, Long> {
}
