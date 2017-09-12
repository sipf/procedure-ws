package pf.api.net.procedurews.domain;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class Procedure {

    @Id
    @GeneratedValue
    private Long id;

    private String title;
    private String description;
    private String version;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @ManyToOne
    @JoinColumn(name = "target_id")
    private Target target;

    @ManyToOne
    @JoinColumn(name = "statut_id")
    private Statut statut;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "procedure_output",
            joinColumns = @JoinColumn(name = "procedure_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "output_id", referencedColumnName = "id"))
    private List<Output> outputs;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "procedure_input",
            joinColumns = @JoinColumn(name = "procedure_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "input_id", referencedColumnName = "id"))
    private List<Input> inputs;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "procedure_step",
            joinColumns = @JoinColumn(name = "procedure_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "step_id", referencedColumnName = "id"))
    private List<Step> steps;
}
